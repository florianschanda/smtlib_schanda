(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.83807765252575361358822192414663732051849365234375p1014 {+ 3774366203622524 1014 (3.22686e+305)}
; Y = -1.2981393779318757264462647071923129260540008544921875p74 {- 1342700391358467 74 (-2.45212e+022)}
; 1.83807765252575361358822192414663732051849365234375p1014 / -1.2981393779318757264462647071923129260540008544921875p74 == -1.4159324366649119752992191934026777744293212890625p940
; [HW: -1.4159324366649119752992191934026777744293212890625p940] 

; mpf : - 1873193166775400 940
; mpfd: - 1873193166775400 940 (-1.31595e+283) class: Neg. norm. non-zero
; hwf : - 1873193166775400 940 (-1.31595e+283) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110101 #b1101011010001100010000011100110100011011010001111100)))
(assert (= y (fp #b1 #b10001001001 #b0100110001010010110111001011110111011110000000000011)))
(assert (= r (fp #b1 #b11110101011 #b0110101001111010100011000101010011010010010001101000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
