(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8101834545922572683451789998798631131649017333984375p865 {- 3648741904203431 865 (-4.45317e+260)}
; Y = 1.6588131370026726330024757771752774715423583984375p941 {+ 2967030598312024 941 (3.08335e+283)}
; -1.8101834545922572683451789998798631131649017333984375p865 + 1.6588131370026726330024757771752774715423583984375p941 == 1.6588131370026726330024757771752774715423583984375p941
; [HW: 1.6588131370026726330024757771752774715423583984375p941] 

; mpf : + 2967030598312024 941
; mpfd: + 2967030598312024 941 (3.08335e+283) class: Pos. norm. non-zero
; hwf : + 2967030598312024 941 (3.08335e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100000 #b1100111101101000001011101101000100111011111010100111)))
(assert (= y (fp #b0 #b11110101100 #b1010100010100111111110100100110110011010000001011000)))
(assert (= r (fp #b0 #b11110101100 #b1010100010100111111110100100110110011010000001011000)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
