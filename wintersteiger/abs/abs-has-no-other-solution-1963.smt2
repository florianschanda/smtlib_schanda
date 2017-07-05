(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.671345158253813689697153677116148173809051513671875p-336 {+ 3023469804548862 -336 (1.19395e-101)}
; 1.671345158253813689697153677116148173809051513671875p-336 | == 1.671345158253813689697153677116148173809051513671875p-336
; [HW: 1.671345158253813689697153677116148173809051513671875p-336] 

; mpf : + 3023469804548862 -336
; mpfd: + 3023469804548862 -336 (1.19395e-101) class: Pos. norm. non-zero
; hwf : + 3023469804548862 -336 (1.19395e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101111 #b1010101111011101010001101011101100000111001011111110)))
(assert (= r (fp #b0 #b01010101111 #b1010101111011101010001101011101100000111001011111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
