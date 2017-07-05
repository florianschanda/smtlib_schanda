(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1364291397539079131462358418502844870090484619140625p424 {+ 614422222958177 424 (4.92335e+127)}
; Y = 1.488166262903404923889638666878454387187957763671875p-796 {+ 2198505399706622 -796 (3.57088e-240)}
; 1.1364291397539079131462358418502844870090484619140625p424 % 1.488166262903404923889638666878454387187957763671875p-796 == 1.35422174971967734791178372688591480255126953125p-796
; [HW: 1.35422174971967734791178372688591480255126953125p-796] 

; mpf : + 1595272940044064 -796
; mpfd: + 1595272940044064 -796 (3.24948e-240) class: Pos. norm. non-zero
; hwf : + 1595272940044064 -796 (3.24948e-240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100111 #b0010001011101101000001010010010101110110111001100001)))
(assert (= y (fp #b0 #b00011100011 #b0111110011111000011101101101011000101110001111111110)))
(assert (= r (fp #b1 #b00011100000 #x1251803cd26f0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
