(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3923917521081017323325568213476799428462982177734375p-84 {+ 1767175348577303 -84 (7.1985e-026)}
; Y = -1.925396277830011104725826953654177486896514892578125p698 {- 4167614332005282 698 (-2.53196e+210)}
; 1.3923917521081017323325568213476799428462982177734375p-84 * -1.925396277830011104725826953654177486896514892578125p698 == -1.3404529483950733403929689302458427846431732177734375p615
; [HW: -1.3404529483950733403929689302458427846431732177734375p615] 

; mpf : - 1533263771529239 615
; mpfd: - 1533263771529239 615 (-1.82263e+185) class: Neg. norm. non-zero
; hwf : - 1533263771529239 615 (-1.82263e+185) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101011 #b0110010001110011110010010010111010000110010000010111)))
(assert (= y (fp #b1 #b11010111001 #b1110110011100110110001010011110100011110101110100010)))
(assert (= r (fp #b1 #b11001100110 #b0101011100100111111011001010011100101111000000010111)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
