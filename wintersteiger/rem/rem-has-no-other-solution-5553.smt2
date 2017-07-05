(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.00885766583752722880262808757834136486053466796875p-791 {+ 39891380565260 -791 (7.74646e-239)}
; Y = 1.6375606247857652508770343047217465937137603759765625p-507 {+ 2871317792211273 -507 (3.90832e-153)}
; 1.00885766583752722880262808757834136486053466796875p-791 % 1.6375606247857652508770343047217465937137603759765625p-507 == 1.00885766583752722880262808757834136486053466796875p-791
; [HW: 1.00885766583752722880262808757834136486053466796875p-791] 

; mpf : + 39891380565260 -791
; mpfd: + 39891380565260 -791 (7.74646e-239) class: Pos. norm. non-zero
; hwf : + 39891380565260 -791 (7.74646e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101000 #b0000001001000100011111101111100100010111010100001100)))
(assert (= y (fp #b0 #b01000000100 #b1010001100110111001011000101000010101100000101001001)))
(assert (= r (fp #b0 #b00011101000 #x02447ef91750c)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
