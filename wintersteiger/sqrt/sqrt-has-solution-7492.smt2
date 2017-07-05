(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8166508153193252628199161335942335426807403564453125p-247 {+ 3677868307563925 -247 (8.03272e-075)}
; 1.8166508153193252628199161335942335426807403564453125p-247 S == 1.906122144732244283460431688581593334674835205078125p-124
; [HW: 1.906122144732244283460431688581593334674835205078125p-124] 

; mpf : + 4080811353368290 -124
; mpfd: + 4080811353368290 -124 (8.96254e-038) class: Pos. norm. non-zero
; hwf : + 4080811353368290 -124 (8.96254e-038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001000 #b1101000100010000000001110010000000001100010110010101)))
(assert (= r (fp #b0 #b01110000011 #b1110011111110111100111101111000111001110011011100010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
