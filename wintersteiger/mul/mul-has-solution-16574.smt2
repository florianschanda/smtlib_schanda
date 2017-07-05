(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7151659958137688288815070336568169295787811279296875p529 {+ 3220821312254939 529 (3.01421e+159)}
; Y = -1.421365155598969476358206520671956241130828857421875p190 {- 1897659957742430 190 (-2.23051e+057)}
; 1.7151659958137688288815070336568169295787811279296875p529 * -1.421365155598969476358206520671956241130828857421875p190 == -1.2189385912589496552271839391323737800121307373046875p720
; [HW: -1.2189385912589496552271839391323737800121307373046875p720] 

; mpf : - 986011758010827 720
; mpfd: - 986011758010827 720 (-6.72324e+216) class: Neg. norm. non-zero
; hwf : - 986011758010827 720 (-6.72324e+216) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010000 #b1011011100010101000111100110001100111011001111011011)))
(assert (= y (fp #b1 #b10010111101 #b0110101111011110100101100011101011111000101101011110)))
(assert (= r (fp #b1 #b11011001111 #b0011100000001100010111000000100101001010000111001011)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
