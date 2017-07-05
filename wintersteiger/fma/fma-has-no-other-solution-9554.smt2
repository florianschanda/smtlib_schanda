(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.783573895129304531792513444088399410247802734375p-170 {+ 3528903102121584 -170 (1.19177e-051)}
; Y = -1.6123548861942411658532137153088115155696868896484375p787 {- 2757801237282887 787 (-1.3124e+237)}
; Z = 1.389264692791715827269172223168425261974334716796875p993 {+ 1753092325405262 993 (1.16298e+299)}
; 1.783573895129304531792513444088399410247802734375p-170 x -1.6123548861942411658532137153088115155696868896484375p787 1.389264692791715827269172223168425261974334716796875p993 == 1.3892646927917156052245672981371171772480010986328125p993
; [HW: 1.3892646927917156052245672981371171772480010986328125p993] 

; mpf : + 1753092325405261 993
; mpfd: + 1753092325405261 993 (1.16298e+299) class: Pos. norm. non-zero
; hwf : + 1753092325405261 993 (1.16298e+299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010101 #b1100100010011000010011000111110110010100011001110000)))
(assert (= y (fp #b1 #b11100010010 #b1001110011000011010010100011000111000000000001000111)))
(assert (= z (fp #b0 #b11111100000 #b0110001110100110110110011101010100000111001001001110)))
(assert (= r (fp #b0 #b11111100000 #b0110001110100110110110011101010100000111001001001101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
