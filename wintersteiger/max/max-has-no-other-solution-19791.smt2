(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8350864447907557774897213676013052463531494140625p-400 {- 3760895001581800 -400 (-7.10654e-121)}
; Y = -1.7168049093670185722970700226142071187496185302734375p-312 {- 3228202322722647 -312 (-2.05761e-094)}
; -1.8350864447907557774897213676013052463531494140625p-400 M -1.7168049093670185722970700226142071187496185302734375p-312 == -1.8350864447907557774897213676013052463531494140625p-400
; [HW: -1.8350864447907557774897213676013052463531494140625p-400] 

; mpf : - 3760895001581800 -400
; mpfd: - 3760895001581800 -400 (-7.10654e-121) class: Neg. norm. non-zero
; hwf : - 3760895001581800 -400 (-7.10654e-121) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101111 #b1101010111001000001110011010100110110101100011101000)))
(assert (= y (fp #b1 #b01011000111 #b1011011110000000100001101100101101010111111101010111)))
(assert (= r (fp #b1 #b01001101111 #b1101010111001000001110011010100110110101100011101000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
