(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6078288317679234609158811508677899837493896484375p955 {- 2737417700255064 955 (-4.8965e+287)}
; Y = 1.1675783209414551944149707196629606187343597412109375p433 {+ 754705663747311 433 (2.58985e+130)}
; -1.6078288317679234609158811508677899837493896484375p955 - 1.1675783209414551944149707196629606187343597412109375p433 == -1.6078288317679234609158811508677899837493896484375p955
; [HW: -1.6078288317679234609158811508677899837493896484375p955] 

; mpf : - 2737417700255064 955
; mpfd: - 2737417700255064 955 (-4.8965e+287) class: Neg. norm. non-zero
; hwf : - 2737417700255064 955 (-4.8965e+287) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111010 #b1001101110011010101010111001101000000010010101011000)))
(assert (= y (fp #b0 #b10110110000 #b0010101011100110011010011010111111110110010011101111)))
(assert (= r (fp #b1 #b11110111010 #b1001101110011010101010111001101000000010010101011000)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
