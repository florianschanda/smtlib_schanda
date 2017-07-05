(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5605195641013771545857480305130593478679656982421875p-579 {- 2524355700020835 -579 (-7.88682e-175)}
; Y = -1.981978857490521050976894912309944629669189453125p348 {- 4422439616680016 348 (-1.13642e+105)}
; Z = 1.4547355117686115999475759963388554751873016357421875p161 {+ 2047946681353251 161 (4.2522e+048)}
; -1.5605195641013771545857480305130593478679656982421875p-579 x -1.981978857490521050976894912309944629669189453125p348 1.4547355117686115999475759963388554751873016357421875p161 == 1.4547355117686115999475759963388554751873016357421875p161
; [HW: 1.4547355117686115999475759963388554751873016357421875p161] 

; mpf : + 2047946681353251 161
; mpfd: + 2047946681353251 161 (4.2522e+048) class: Pos. norm. non-zero
; hwf : + 2047946681353251 161 (4.2522e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111100 #b1000111101111110001101011100110010010101011001100011)))
(assert (= y (fp #b1 #b10101011011 #b1111101101100010111101110110011001001001000001010000)))
(assert (= z (fp #b0 #b10010100000 #b0111010001101001100010111110011101100000010000100011)))
(assert (= r (fp #b0 #b10010100000 #b0111010001101001100010111110011101100000010000100011)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
