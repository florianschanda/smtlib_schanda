(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1031068616138679505667141711455769836902618408203125p281 {+ 464352023543557 281 (4.28594e+084)}
; Y = -1.6580416453761974704406156888580881059169769287109375p-897 {- 2963556108910511 -897 (-1.56924e-270)}
; 1.1031068616138679505667141711455769836902618408203125p281 - -1.6580416453761974704406156888580881059169769287109375p-897 == 1.1031068616138679505667141711455769836902618408203125p281
; [HW: 1.1031068616138679505667141711455769836902618408203125p281] 

; mpf : + 464352023543557 281
; mpfd: + 464352023543557 281 (4.28594e+084) class: Pos. norm. non-zero
; hwf : + 464352023543557 281 (4.28594e+084) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011000 #b0001101001100101001101100001011010011111111100000101)))
(assert (= y (fp #b1 #b00001111110 #b1010100001110101011010101101001001001011111110101111)))
(assert (= r (fp #b0 #b10100011000 #b0001101001100101001101100001011010011111111100000101)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
