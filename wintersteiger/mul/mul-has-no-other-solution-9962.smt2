(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.817497607004756599025085961329750716686248779296875p114 {+ 3681681918282894 114 (3.77479e+034)}
; Y = 1.5027052115563341860848822761909104883670806884765625p710 {+ 2263983003442313 710 (8.09414e+213)}
; 1.817497607004756599025085961329750716686248779296875p114 * 1.5027052115563341860848822761909104883670806884765625p710 == 1.3655815630186067810569738867343403398990631103515625p825
; [HW: 1.3655815630186067810569738867343403398990631103515625p825] 

; mpf : + 1646432990984121 825
; mpfd: + 1646432990984121 825 (3.05537e+248) class: Pos. norm. non-zero
; hwf : + 1646432990984121 825 (3.05537e+248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110001 #b1101000101000111100001011110111010100100110010001110)))
(assert (= y (fp #b0 #b11011000101 #b1000000010110001010010011110101100101001110010001001)))
(assert (= r (fp #b0 #b11100111000 #b0101110110010110110000001101100100101111011110111001)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
