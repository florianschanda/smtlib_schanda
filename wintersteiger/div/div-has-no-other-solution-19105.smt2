(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.894108817608649797392672553542070090770721435546875p937 {+ 4026708137810990 937 (2.20045e+282)}
; Y = -1.3867262751293285560905133024789392948150634765625p311 {- 1741660308566824 311 (-5.78521e+093)}
; 1.894108817608649797392672553542070090770721435546875p937 / -1.3867262751293285560905133024789392948150634765625p311 == -1.36588514372239888672311280970461666584014892578125p626
; [HW: -1.36588514372239888672311280970461666584014892578125p626] 

; mpf : - 1647800196928596 626
; mpfd: - 1647800196928596 626 (-3.80357e+188) class: Neg. norm. non-zero
; hwf : - 1647800196928596 626 (-3.80357e+188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101000 #b1110010011100100010100001100001010110001110000101110)))
(assert (= y (fp #b1 #b10100110110 #b0110001100000000011111100100000000101111001100101000)))
(assert (= r (fp #b1 #b11001110001 #b0101110110101010101001100001011001100001010001010100)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
