(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.78356890684125968249418292543850839138031005859375p-1022 {- 3528880636869404 -1023 (-1.7435e-308)}
; Y = 1.021327806473789845398414399824105203151702880859375p807 {+ 96051901287990 807 (8.71709e+242)}
; -0.78356890684125968249418292543850839138031005859375p-1022 M 1.021327806473789845398414399824105203151702880859375p807 == 1.021327806473789845398414399824105203151702880859375p807
; [HW: 1.021327806473789845398414399824105203151702880859375p807] 

; mpf : + 96051901287990 807
; mpfd: + 96051901287990 807 (8.71709e+242) class: Pos. norm. non-zero
; hwf : + 96051901287990 807 (8.71709e+242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b1100100010010111111110001100110100001011101100011100)))
(assert (= y (fp #b0 #b11100100110 #b0000010101110101101111010011011101001100111000110110)))
(assert (= r (fp #b0 #b11100100110 #b0000010101110101101111010011011101001100111000110110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
