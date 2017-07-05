(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.30597300510043456966968733468092978000640869140625p855 {- 1377979911755748 855 (-3.13748e+257)}
; -1.30597300510043456966968733468092978000640869140625p855 | == 1.30597300510043456966968733468092978000640869140625p855
; [HW: 1.30597300510043456966968733468092978000640869140625p855] 

; mpf : + 1377979911755748 855
; mpfd: + 1377979911755748 855 (3.13748e+257) class: Pos. norm. non-zero
; hwf : + 1377979911755748 855 (3.13748e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010110 #b0100111001010100001111110011001001011101011111100100)))
(assert (= r (fp #b0 #b11101010110 #b0100111001010100001111110011001001011101011111100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
