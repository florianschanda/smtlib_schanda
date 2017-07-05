(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3079737789590859531330124809755943715572357177734375p751 {+ 1386990596160023 751 (1.54927e+226)}
; 1.3079737789590859531330124809755943715572357177734375p751 S == 1.6173891176578913952965876887901686131954193115234375p375
; [HW: 1.6173891176578913952965876887901686131954193115234375p375] 

; mpf : + 2780473400226679 375
; mpfd: + 2780473400226679 375 (1.24469e+113) class: Pos. norm. non-zero
; hwf : + 2780473400226679 375 (1.24469e+113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101110 #b0100111011010111010111101001110010100111101000010111)))
(assert (= r (fp #b0 #b10101110110 #b1001111000001101001101101001010100111111001101110111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
