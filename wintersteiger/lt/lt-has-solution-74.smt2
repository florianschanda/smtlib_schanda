(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6968286973016859509044707010616548359394073486328125p26 {- 3138237461508941 26 (-1.13872e+008)}
; Y = -1.77326031243608195353544942918233573436737060546875p971 {- 3482454854947532 971 (-3.53914e+292)}
; -1.6968286973016859509044707010616548359394073486328125p26 < -1.77326031243608195353544942918233573436737060546875p971 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011001 #b1011001001100011010111011001000111010011001101001101)))
(assert (= y (fp #b1 #b11111001010 #b1100010111110100011000110100100100110101001011001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
