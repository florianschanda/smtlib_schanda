(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0062352909149334667660014019929803907871246337890625p444 {+ 28081253841041 444 (4.57107e+133)}
; Y = -1.040695165744753847292258797097019851207733154296875p-994 {- 183274733283854 -994 (-6.21595e-300)}
; 1.0062352909149334667660014019929803907871246337890625p444 % -1.040695165744753847292258797097019851207733154296875p-994 == 1.86671447151678648879169486463069915771484375p-996
; [HW: 1.86671447151678648879169486463069915771484375p-996] 

; mpf : + 3903334970959616 -996
; mpfd: + 3903334970959616 -996 (2.78742e-300) class: Pos. norm. non-zero
; hwf : + 3903334970959616 -996 (2.78742e-300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111011 #b0000000110011000101000101101001010001111100010010001)))
(assert (= y (fp #b1 #b00000011101 #b0000101001101010111111111001010111111010101000001110)))
(assert (= r (fp #b0 #b00000011011 #xdde0ffe622700)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
