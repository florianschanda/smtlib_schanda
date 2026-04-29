(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1545950742164006186385449836961925029754638671875p370 {- 696234318634296 370 (-2.77669e+111)}
; Y = 1.961124393788789443959785785409621894359588623046875p-871 {+ 4328519461723886 -871 (1.2456e-262)}
; -1.1545950742164006186385449836961925029754638671875p370 = 1.961124393788789443959785785409621894359588623046875p-871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110001 #b0010011110010011100010101111001111100001110100111000)))
(assert (= y (fp #b0 #b00010011000 #b1111011000001100001111111000111010110101111011101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
