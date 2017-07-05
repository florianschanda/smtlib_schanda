(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.26810825334541821263201200054027140140533447265625p-24 {- 1207452229861380 -24 (-7.55851e-008)}
; Y = 1.6667274445939013194362132708192802965641021728515625p-45 {+ 3002673471030777 -45 (4.73712e-014)}
; -1.26810825334541821263201200054027140140533447265625p-24 M 1.6667274445939013194362132708192802965641021728515625p-45 == 1.6667274445939013194362132708192802965641021728515625p-45
; [HW: 1.6667274445939013194362132708192802965641021728515625p-45] 

; mpf : + 3002673471030777 -45
; mpfd: + 3002673471030777 -45 (4.73712e-014) class: Pos. norm. non-zero
; hwf : + 3002673471030777 -45 (4.73712e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100111 #b0100010010100010101111100001001111101000000000000100)))
(assert (= y (fp #b0 #b01111010010 #b1010101010101110101001100101100111100000010111111001)))
(assert (= r (fp #b0 #b01111010010 #b1010101010101110101001100101100111100000010111111001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
