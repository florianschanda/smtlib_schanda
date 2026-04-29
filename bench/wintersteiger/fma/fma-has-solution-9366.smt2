(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1059569354789300366093129923683591187000274658203125p512 {+ 477187615140229 512 (1.48285e+154)}
; Y = 1.4116289154055714494262474545394070446491241455078125p660 {+ 1853811830035453 660 (6.75333e+198)}
; Z = -1.56142852771382489862617148901335895061492919921875p-114 {- 2528449308207148 -114 (-7.518e-035)}
; 1.1059569354789300366093129923683591187000274658203125p512 x 1.4116289154055714494262474545394070446491241455078125p660 -1.56142852771382489862617148901335895061492919921875p-114 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111111 #b0001101100011111111111100110010010101010100110000101)))
(assert (= y (fp #b0 #b11010010011 #b0110100101100000100000110011100111000001001111111101)))
(assert (= z (fp #b1 #b01110001101 #b1000111110111001110001111010110110010010100000101100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
