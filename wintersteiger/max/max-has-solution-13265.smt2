(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6503560705790130125336645505740307271480560302734375p-111 {- 2928943357117783 -111 (-6.35694e-034)}
; Y = -1.274645746597712570036264878581278026103973388671875p-193 {- 1236894482036350 -193 (-1.01531e-058)}
; -1.6503560705790130125336645505740307271480560302734375p-111 M -1.274645746597712570036264878581278026103973388671875p-193 == -1.274645746597712570036264878581278026103973388671875p-193
; [HW: -1.274645746597712570036264878581278026103973388671875p-193] 

; mpf : - 1236894482036350 -193
; mpfd: - 1236894482036350 -193 (-1.01531e-058) class: Neg. norm. non-zero
; hwf : - 1236894482036350 -193 (-1.01531e-058) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110010000 #b1010011001111101101111000100010111100100010101010111)))
(assert (= y (fp #b1 #b01100111110 #b0100011001001111001011110000001110011111011001111110)))
(assert (= r (fp #b1 #b01100111110 #b0100011001001111001011110000001110011111011001111110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
