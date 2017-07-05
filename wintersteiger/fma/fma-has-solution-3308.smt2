(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7797046813289030264826351412921212613582611083984375p284 {- 3511477712291879 284 (-5.5318e+085)}
; Y = 1.8845562387509267043839145117090083658695220947265625p-246 {+ 3983687147226921 -246 (1.6666e-074)}
; Z = 1.7849340435073788313502518576569855213165283203125p722 {+ 3535028665850248 722 (3.93803e+217)}
; -1.7797046813289030264826351412921212613582611083984375p284 x 1.8845562387509267043839145117090083658695220947265625p-246 1.7849340435073788313502518576569855213165283203125p722 == 1.7849340435073786093056469326256774365901947021484375p722
; [HW: 1.7849340435073786093056469326256774365901947021484375p722] 

; mpf : + 3535028665850247 722
; mpfd: + 3535028665850247 722 (3.93803e+217) class: Pos. norm. non-zero
; hwf : + 3535028665850247 722 (3.93803e+217) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011011 #b1100011110011010101110011101101011011000100000100111)))
(assert (= y (fp #b0 #b01100001001 #b1110001001110010010001110001010011101000011100101001)))
(assert (= z (fp #b0 #b11011010001 #b1100100011110001011011111111111001100001100110001000)))
(assert (= r (fp #b0 #b11011010001 #b1100100011110001011011111111111001100001100110000111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
