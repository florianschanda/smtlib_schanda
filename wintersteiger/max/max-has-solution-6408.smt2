(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.558307743599108174947787119890563189983367919921875p393 {- 2514394546031006 393 (-3.1437e+118)}
; Y = -1.357078468129511161777145389351062476634979248046875p-613 {- 1608138456010094 -613 (-3.99225e-185)}
; -1.558307743599108174947787119890563189983367919921875p393 M -1.357078468129511161777145389351062476634979248046875p-613 == -1.357078468129511161777145389351062476634979248046875p-613
; [HW: -1.357078468129511161777145389351062476634979248046875p-613] 

; mpf : - 1608138456010094 -613
; mpfd: - 1608138456010094 -613 (-3.99225e-185) class: Neg. norm. non-zero
; hwf : - 1608138456010094 -613 (-3.99225e-185) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001000 #b1000111011101101010000011001101111011100100110011110)))
(assert (= y (fp #b1 #b00110011010 #b0101101101101001011111101001011010111000110101101110)))
(assert (= r (fp #b1 #b00110011010 #b0101101101101001011111101001011010111000110101101110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
