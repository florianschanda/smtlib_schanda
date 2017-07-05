(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.149738796009227570493749226443469524383544921875p-786 {+ 674363585910064 -786 (2.82503e-237)}
; Y = 1.539939528927540823843855832819826900959014892578125p-533 {+ 2431671461280674 -533 (5.47666e-161)}
; 1.149738796009227570493749226443469524383544921875p-786 % 1.539939528927540823843855832819826900959014892578125p-533 == 1.149738796009227570493749226443469524383544921875p-786
; [HW: 1.149738796009227570493749226443469524383544921875p-786] 

; mpf : + 674363585910064 -786
; mpfd: + 674363585910064 -786 (2.82503e-237) class: Pos. norm. non-zero
; hwf : + 674363585910064 -786 (2.82503e-237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101101 #b0010011001010101010010000001111111001101010100110000)))
(assert (= y (fp #b0 #b00111101010 #b1000101000111001011110100001101010001111101110100010)))
(assert (= r (fp #b0 #b00011101101 #x2655481fcd530)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
