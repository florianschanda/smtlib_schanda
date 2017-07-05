(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.841640057345945269418052703258581459522247314453125p556 {- 3790409848643282 556 (-4.34393e+167)}
; Y = -1.6607873912390604953515094166505150496959686279296875p626 {- 2975921848955355 626 (-4.62478e+188)}
; -1.841640057345945269418052703258581459522247314453125p556 m -1.6607873912390604953515094166505150496959686279296875p626 == -1.6607873912390604953515094166505150496959686279296875p626
; [HW: -1.6607873912390604953515094166505150496959686279296875p626] 

; mpf : - 2975921848955355 626
; mpfd: - 2975921848955355 626 (-4.62478e+188) class: Neg. norm. non-zero
; hwf : - 2975921848955355 626 (-4.62478e+188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101011 #b1101011101110101101110010000100101001101111011010010)))
(assert (= y (fp #b1 #b11001110001 #b1010100100101001010111001100101011111011000111011011)))
(assert (= r (fp #b1 #b11001110001 #b1010100100101001010111001100101011111011000111011011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
