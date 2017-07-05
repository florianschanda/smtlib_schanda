(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.499951601371254827910206586238928139209747314453125p-62 {+ 2251581845638866 -62 (3.2525e-019)}
; Y = 1.6318357780944301449466138365096412599086761474609375p353 {+ 2845535374785423 353 (2.99409e+106)}
; 1.499951601371254827910206586238928139209747314453125p-62 % 1.6318357780944301449466138365096412599086761474609375p353 == 1.499951601371254827910206586238928139209747314453125p-62
; [HW: 1.499951601371254827910206586238928139209747314453125p-62] 

; mpf : + 2251581845638866 -62
; mpfd: + 2251581845638866 -62 (3.2525e-019) class: Pos. norm. non-zero
; hwf : + 2251581845638866 -62 (3.2525e-019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000001 #b0111111111111100110101000000000101111000111011010010)))
(assert (= y (fp #b0 #b10101100000 #b1010000110111111111111010101001101011011101110001111)))
(assert (= r (fp #b0 #b01111000001 #x7ffcd40178ed2)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
