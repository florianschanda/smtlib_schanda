(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9970017416992746905890498965163715183734893798828125p-858 {+ 4490096672404589 -858 (1.03906e-258)}
; Y = -1.4484637630089343129924372988170944154262542724609375p942 {- 2019701235976207 942 (-5.38473e+283)}
; 1.9970017416992746905890498965163715183734893798828125p-858 - -1.4484637630089343129924372988170944154262542724609375p942 == 1.448463763008934535037042223848402500152587890625p942
; [HW: 1.448463763008934535037042223848402500152587890625p942] 

; mpf : + 2019701235976208 942
; mpfd: + 2019701235976208 942 (5.38473e+283) class: Pos. norm. non-zero
; hwf : + 2019701235976208 942 (5.38473e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100101 #b1111111100111011100000011001001010100111010001101101)))
(assert (= y (fp #b1 #b11110101101 #b0111001011001110100001010110101110010000100000001111)))
(assert (= r (fp #b0 #b11110101101 #b0111001011001110100001010110101110010000100000010000)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
