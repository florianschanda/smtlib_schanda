(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.333569256482554532539097635890357196331024169921875p461 {- 1502262379197086 461 (-7.94042e+138)}
; Y = 1.8621102052418525563126650013145990669727325439453125p445 {+ 3882599199079509 445 (1.69182e+134)}
; -1.333569256482554532539097635890357196331024169921875p461 + 1.8621102052418525563126650013145990669727325439453125p445 == -1.333540842935721837392293309676460921764373779296875p461
; [HW: -1.333540842935721837392293309676460921764373779296875p461] 

; mpf : - 1502134415958158 461
; mpfd: - 1502134415958158 461 (-7.94025e+138) class: Neg. norm. non-zero
; hwf : - 1502134415958158 461 (-7.94025e+138) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001100 #b0101010101100100110010110111011110001011001010011110)))
(assert (= y (fp #b0 #b10110111100 #b1101110010110011010000010010000100001111110001010101)))
(assert (= r (fp #b1 #b10111001100 #b0101010101100010111011101100010001001010000010001110)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
