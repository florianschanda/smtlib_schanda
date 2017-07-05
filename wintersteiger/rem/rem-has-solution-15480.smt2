(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4706382423343844489949105991399846971035003662109375p870 {+ 2119566212803439 870 (1.15772e+262)}
; Y = 1.3868081398353269140244492518831975758075714111328125p528 {+ 1742028994426253 528 (1.21858e+159)}
; 1.4706382423343844489949105991399846971035003662109375p870 % 1.3868081398353269140244492518831975758075714111328125p528 == 1.281709540112025091929126574541442096233367919921875p528
; [HW: 1.281709540112025091929126574541442096233367919921875p528] 

; mpf : + 1268706979875230 528
; mpfd: + 1268706979875230 528 (1.12623e+159) class: Pos. norm. non-zero
; hwf : + 1268706979875230 528 (1.12623e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100101 #b0111100001111011101111110111001100010010101101101111)))
(assert (= y (fp #b0 #b11000001111 #b0110001100000101110110111011011001101011010110001101)))
(assert (= r (fp #b1 #b11000001011 #xae7bde8aabef0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
